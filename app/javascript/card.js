window.addEventListener("DOMContentLoaded",()=> {
  console.log("1")
//   debugger
//   const path = location.pathname
// const params = path.replace(/items/g, '').replace(/orders/g, '').replace(/\//g, '');
// const tokenObj= 0;
// if (path.includes("items") && path.includes("orders") && /^([1-9]\d*|0)$/.test(params)) {
  Payjp.setPublicKey(process.env.PAYJP_PUBLIC_KEY);
  console.log("2")
  const form = document.getElementById("charge-form");
  console.log(form)
  
  form.addEventListener("submit", (e) => {
    console.log("3")
    e.preventDefault();
    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);
    const card = {
      number: formData.get("order[number]"),
      cvc: formData.get("order[cvc]"),
      exp_month: formData.get("order[exp_month]"),
      exp_year: `20${formData.get("order[exp_year]")}`,
    };
    console.log(card)
    Payjp.createToken(card, (status, response) => {
      console.log(status)
      if (status == 200) {
        console.log("4")
        const token = response.id;
        console.log(token)
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} type="hidden" name='token'>`;
        console.log(renderDom)
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }
      document.getElementById("card-number").removeAttribute("name");
      document.getElementById("card-cvc").removeAttribute("name");
      document.getElementById("card-exp-month").removeAttribute("name");
      document.getElementById("card-exp-year").removeAttribute("name");

      document.getElementById("charge-form").submit();
      document.getElementById("charge-form").reset();
    })
  })
// }
});
// window.addEventListener("DOMContentLoaded", pay);