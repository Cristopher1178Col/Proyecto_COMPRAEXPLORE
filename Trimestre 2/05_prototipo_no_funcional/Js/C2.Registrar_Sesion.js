document.getElementById('Registro_Formulario').addEventListener('submit', function(e) {
    e.preventDefault();

    let username = document.getElementById('Usuario').value;
    let email = document.getElementById('Correo').value;
    let password = document.getElementById('Contraseña').value;

    if (username === '') {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'El nombre de usuario es obligatorio.',
        });
    } else if (email === '') {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'El correo electrónico es obligatorio.',
        });
    } else if (password === '') {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'La contraseña es obligatoria.',
        });
    } else {
        Swal.fire({
            icon: 'success',
            title: 'Registro exitoso',
            text: 'Has sido registrado con éxito.',
        }).then(function() {
            window.location.href = 'welcome.html';
        });
    }
});
