document.getElementById('Iniciar_Sesion_Formulario').addEventListener('submit', function(e) {
    e.preventDefault();

    let identifier = document.getElementById('Identificacion').value;
    let password = document.getElementById('Contraseña').value;

    if (identifier === '') {
        Swal.fire({
            icon: 'error',
            title: 'Alto Ahí',
            text: 'Olvidaste Ingresar tu usuario o tu correo.',
        });
    } else if (password === '') {
        Swal.fire({
            icon: 'error',
            title: 'Alto Ahí',
            text: 'Olvidaste Ingresar tu Contraseña',
        });
    } else {
        Swal.fire({
            icon: 'success',
            title: 'Formulario enviado',
            text: 'Inicio de sesión exitoso.',
        }).then(function() {
            window.location.href = 'success.html';
        });
    }
});

document.getElementById('Emergencia').addEventListener('click', function(e) {
    e.preventDefault();
    window.location.href = 'Restablecer_Contraseña.html';
});
    