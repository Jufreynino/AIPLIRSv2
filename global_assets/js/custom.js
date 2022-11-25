const form = document.getElementById('form');
const disease_code = document.getElementById('disease_code');
const disease_description = document.getElementById('disease_description');

function showError(input, message)
{
    const formControl = input.parentElement;
    formControl.className = 'form-control error';
    const small = formControl.querySelector('small');
    small.innerText = message

}

form.addEventListener('submit', e => {
    e.preventDefault();
    
    if(disease_code.value === '')
    {
        showError(disease_code, 'Code is required');
    }
});




 
