const lightLogo = "/assets/img/sprintml-logo-black.svg";
const darkLogo = "/assets/img/sprintml-logo-white.svg";

const isDarkModeActive = () => localStorage.getItem("darkmode") === "active";

const setNavbarLogo = (isDarkMode) => {
  const navbarLogo = document.getElementById("navbar-logo");
  if (!navbarLogo) return;

  const logoSrc = isDarkMode ? darkLogo : lightLogo;
  const cacheTag = isDarkMode ? "dark" : "light";
  navbarLogo.src = `${logoSrc}?theme=${cacheTag}`;
};

const applyTheme = (isDarkMode) => {
  document.body.classList.toggle("darkmode", isDarkMode);
  if (isDarkMode) {
    localStorage.setItem("darkmode", "active");
  } else {
    localStorage.removeItem("darkmode");
  }
  setNavbarLogo(isDarkMode);
};

const initThemeSwitcher = () => {
  applyTheme(isDarkModeActive());

  const themeswitch = document.getElementById("themeswitch");
  if (!themeswitch) return;

  themeswitch.addEventListener("click", () => {
    applyTheme(!isDarkModeActive());
  });
};

if (document.readyState === "loading") {
  document.addEventListener("DOMContentLoaded", initThemeSwitcher);
} else {
  initThemeSwitcher();
}
