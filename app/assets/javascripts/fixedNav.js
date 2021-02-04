document.addEventListener('DOMContentLoaded', () => {
  let navContainer = document.getElementById('nav-container')
  let sticky = navContainer.offsetTop

  const checkScroll = () => {
    if (window.pageYOffset > sticky) {
      document.body.classList.add('darken')
    } else {
      document.body.classList.remove('darken')
    }
  }
  
  window.onscroll = checkScroll
})