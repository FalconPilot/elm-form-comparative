function initialize() {
  let title = document.createElement('h2')
  title.innerHTML = "Hello World"
  title.id = "js-title"

  let input = document.createElement('input')
  input.placeholder = "Who should I greet ?"
  input.addEventListener('input', function() {
    let elem = document.getElementById('js-title')
    elem.innerHTML = "Hello " + this.value
  })

  let block = document.createElement('div')
  block.appendChild(title)
  block.appendChild(input)

  return block
}

let app_js = initialize()
