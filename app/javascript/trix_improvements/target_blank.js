const trixContents = document.querySelectorAll('.trix-content')
console.log("Contents", trixContents)

if (trixContents.length > 0) {
  let links = []
  trixContents.forEach((content) => {
    const contentLinks = content.querySelectorAll('a')
    contentLinks.forEach(contentLink => links.push(contentLink))
  })
  links.forEach(link => link.target = "_blank")
}
