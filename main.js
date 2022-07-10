import "./style.css";

const app = document.getElementById("app");

function getMessage(prhase) {
  return `<h1>Hello Vite!</h1>
  <p> ${prhase || "..."} </p>`;
}

async function fetchData() {
  const response = await fetch("/message");
  const data = await response.json();
  return data;
}

async function startApp() {
  app.innerHTML = getMessage();
  const text = await fetchData();
  app.innerHTML = getMessage(text);
}

startApp();
