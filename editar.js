document.addEventListener('DOMContentLoaded', function () {
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get('id');

    if (id) {
        fetch(`readForOne.php?id=${id}`)
            .then(response => response.json())
            .then(data => {
                if (data && !data.error) {
                    document.getElementById('registroId').value = data.id || '';
                    document.getElementById('nombre_profesor').value = data.nombre_profesor || '';
                    document.getElementById('apellido_profesor').value = data.apellido_profesor || '';
                    document.getElementById('fecha_curso').value = data.fecha_curso || '';
                    document.getElementById('curso').value = data.curso || '';
                    document.getElementById('hora_inicio_planificada').value = data.hora_inicio_planificada || '';
                    document.getElementById('hora_fin_planificada').value = data.hora_fin_planificada || '';
                    document.getElementById('asistencia').value = data.asistencia || '';

                    if (data.asistencia === 'SI') {
                        document.getElementById('asistencia_si').style.display = 'block';
                        document.getElementById('hora_inicio_asistencia').value = data.hora_inicio_asistencia || '';
                        document.getElementById('hora_fin_asistencia').value = data.hora_fin_asistencia || '';
                        document.getElementById('asistencia_no').style.display = 'none';
                    } else {
                        document.getElementById('asistencia_no').style.display = 'block';
                        document.getElementById('tipo_inasistencia').value = data.tipo_inasistencia || '';
                        document.getElementById('descripcion_causa').value = data.descripcion_causa || '';
                        document.getElementById('asistencia_si').style.display = 'none';
                    }
                } else {
                    console.error('Error:', data.error);
                }
            })
            .catch(error => console.error('Error:', error));
    }
});
