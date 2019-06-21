window.addEventListener('scroll',function (e) {
    var nav=document.getElementById(nav1)
    if (e.y>200)
    {
      nav.classList.remove("navbar-light");
      nav.classList.remove("navbar-dark");
      nav.classList.remove("bg-light");
        nav.classList.add("navbar-dark");
      nav.classList.add("bg-dark");
      nav.style.transition=".5s ease-in-out 2s";
    }
else
    {
        nav.classList.add("navbar-light");
        nav.classList.add("navbar-dark");
        nav.classList.add("bg-light");
        nav.classList.remove("navbar-dark");
        nav.classList.remove("bg-dark");
    }
})