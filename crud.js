document.addEventListener('DOMContentLoaded', function () {
    cargarRegistros();

    function cargarRegistros() {
        fetch('read.php')
            .then(response => response.json())
            .then(data => {
                const tabla = document.querySelector('#registrosTable tbody');
                tabla.innerHTML = '';
                
                data.forEach(registro => {
                    const fila = document.createElement('tr');
                    fila.innerHTML = `
                        <td>${registro.id}</td>
                        <td>${registro.nombre_profesor}</td>
                        <td>${registro.apellido_profesor}</td>
                        <td>${registro.fecha_curso}</td>
                        <td>${registro.curso}</td>
                        <td>${registro.hora_inicio_planificada}</td>
                        <td>${registro.hora_fin_planificada}</td>
                        <td>${registro.asistencia}</td>
                        <td>
                            <a href="editar.html?id=${registro.id}" class="btn btn-edit">Editar</a>
                            <button class="btn btn-delete" onclick="eliminarRegistro(${registro.id})">Eliminar</button>
                        </td>
                    `;
                    tabla.appendChild(fila);
                });
            });
    }

    window.eliminarRegistro = function(id) {
        if (confirm('¿Estás seguro de que quieres eliminar este registro?')) {
            fetch('delete.php', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ id: id })
            })
            .then(response => response.json())
            .then(result => {
                if (result.success) {
                    cargarRegistros(); 
                } else {
                    alert('Error al eliminar el registro');
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert('Error al eliminar el registro');
            });
        }
    };
});
