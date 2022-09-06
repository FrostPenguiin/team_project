/*
Credits  Andy Tran
https://codepen.io/andytran/pen/RPBdgM
*/
const signUpBox = document.querySelector(".sign-up-box");

signUpBox.addEventListener("click", handleClick, false);
function handleClick(event) {
  if (signUpBox.classList.contains("active")) return;
  let str = `
        <span onclick="event.stopPropagation(); removedActive();">X</span>
        <input type="text" name="name" placeholder="이름"/>
        <input type="text" name="id" placeholder="아이디"/>
        <input type="password" name="password" placeholder="비밀번호"/>
        <input type="text" name="phone number" placeholder="전화번호"/>
        <button onclick="event.stopPropagation(); handleSignUp();" >회원가입</button>
    `;
  this.classList.toggle("active");
  this.innerHTML = "";
  setTimeout(() => (this.innerHTML = str), 500);
}

function removedActive() {
  signUpBox.classList.remove("active");
  signUpBox.innerHTML = `<i class="material-icons">create</i>`;
}
function handleSignUp() {
  let signUpBoxActive = document.querySelector(".active");
  let inputs = signUpBoxActive.querySelectorAll("input");
  let nameField = inputs[0];
  let idField = inputs[1];
  let passwordField = inputs[2];
  let phonenumberField = inputs[3];
  if (
    nameField.value === "" ||
    idField.value === "" ||
    passwordField.value === ""||
    phonenumberField.value === ""
  ) {
    return;
  }
  removedActive();
}