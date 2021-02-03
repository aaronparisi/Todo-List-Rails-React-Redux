document.addEventListener('DOMContentLoaded', () => {
  let navBar = document.getElementById('navBar')
  let sticky = navBar.offsetTop

  const checkScroll = () => {
    if (window.pageYOffset > sticky) {
      document.body.classList.add('darken')
    } else {
      document.body.classList.remove('darken')
    }
  }
  
  window.onscroll = checkScroll
})