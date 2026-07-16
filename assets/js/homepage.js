/* Yupeng Su — homepage (cards + tasteful motion, vanilla JS) */
(function () {
  "use strict";
  var $ = function (s, c) { return (c || document).querySelector(s); };
  var $$ = function (s, c) { return Array.prototype.slice.call((c || document).querySelectorAll(s)); };
  var reduce = window.matchMedia && window.matchMedia("(prefers-reduced-motion: reduce)").matches;

  /* Theme */
  var root = document.documentElement;
  var stored = null;
  try { stored = localStorage.getItem("theme"); } catch (e) {}
  if (stored) root.setAttribute("data-theme", stored);
  var themeBtn = $("#themeToggle");
  if (themeBtn) themeBtn.addEventListener("click", function () {
    var cur = root.getAttribute("data-theme");
    if (!cur) { cur = (window.matchMedia && window.matchMedia("(prefers-color-scheme: dark)").matches) ? "dark" : "light"; }
    var next = cur === "dark" ? "light" : "dark";
    root.setAttribute("data-theme", next);
    try { localStorage.setItem("theme", next); } catch (e) {}
  });

  /* Mobile menu */
  var navToggle = $("#navToggle"), navLinks = $("#navLinks");
  if (navToggle) navToggle.addEventListener("click", function () { navLinks.classList.toggle("is-open"); });
  $$("#navLinks a").forEach(function (a) { a.addEventListener("click", function () { navLinks.classList.remove("is-open"); }); });

  /* Sticky nav + back-to-top */
  var nav = $("#nav"), toTop = $("#toTop");
  window.addEventListener("scroll", function () {
    var y = window.scrollY || window.pageYOffset;
    if (nav) nav.classList.toggle("is-stuck", y > 8);
    if (toTop) toTop.classList.toggle("is-show", y > 500);
  }, { passive: true });
  if (toTop) toTop.addEventListener("click", function () { window.scrollTo({ top: 0, behavior: "smooth" }); });

  /* Scroll-spy */
  var linkFor = {};
  $$("#navLinks a[href^='#']").forEach(function (a) { linkFor[a.getAttribute("href").slice(1)] = a; });
  var sections = ["about", "news", "publications", "projects", "experience"].map(function (id) { return document.getElementById(id); }).filter(Boolean);
  if ("IntersectionObserver" in window && sections.length) {
    var spy = new IntersectionObserver(function (entries) {
      entries.forEach(function (en) {
        var link = linkFor[en.target.id]; if (!link) return;
        if (en.isIntersecting) {
          $$("#navLinks a").forEach(function (x) { x.classList.remove("is-active"); });
          link.classList.add("is-active");
        }
      });
    }, { rootMargin: "-42% 0px -52% 0px", threshold: 0 });
    sections.forEach(function (s) { spy.observe(s); });
  }

  /* Scroll reveal (staggered inside pub-list) */
  var reveals = $$(".reveal");
  if (reduce || !("IntersectionObserver" in window)) {
    reveals.forEach(function (el) { el.classList.add("is-in"); });
  } else {
    var ro = new IntersectionObserver(function (entries, obs) {
      entries.forEach(function (en) {
        if (!en.isIntersecting) return;
        var el = en.target;
        var sibs = $$(".reveal", el.parentNode);
        var i = sibs.indexOf(el);
        el.style.transitionDelay = (i > 0 ? Math.min(i, 6) * 60 : 0) + "ms";
        el.classList.add("is-in");
        obs.unobserve(el);
      });
    }, { threshold: 0.12 });
    reveals.forEach(function (el) { ro.observe(el); });
  }

  /* Count-up */
  function countUp(el, target) {
    target = parseInt(target, 10); if (isNaN(target)) return;
    if (reduce) { el.textContent = target.toLocaleString(); return; }
    var dur = 1000, start = null;
    function step(ts) {
      if (!start) start = ts;
      var p = Math.min((ts - start) / dur, 1);
      el.textContent = Math.round((1 - Math.pow(1 - p, 3)) * target).toLocaleString();
      if (p < 1) requestAnimationFrame(step);
    }
    requestAnimationFrame(step);
  }

  /* Live total citations */
  var totalEl = document.getElementById("total-cite");
  var S = window.SITE || {};
  if (totalEl && S.repo) {
    var base = S.useCdn
      ? "https://cdn.jsdelivr.net/gh/" + S.repo + "@"
      : "https://raw.githubusercontent.com/" + S.repo + "/";
    fetch(base + "google-scholar-stats/gs_data.json", { cache: "no-cache" })
      .then(function (r) { return r.ok ? r.json() : Promise.reject(r.status); })
      .then(function (data) { if (data.citedby != null) countUp(totalEl, data.citedby); })
      .catch(function () {});
  }
})();
