document.getElementById('Invitado_Formulario').addEventListener('submit', function(e) {
    e.preventDefault();

    let alias = document.getElementById('Alias').value;

    if (alias === '') {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'El alias es obligatorio.',
        });
    } else {
        Swal.fire({
            icon: 'success',
            title: 'Bienvenido',
            text: 'Has ingresado como invitado.',
        }).then(function() {
            window.location.href = 'explore.html';
        });
    }
});
