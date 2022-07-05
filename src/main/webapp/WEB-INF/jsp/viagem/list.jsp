<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<style>

 html{
 
           background-image: url("https://images-ext-2.discordapp.net/external/y9dLQrJh_AFSgyvz_Qr2HLtzhhq9Mvsru6D6T7boZ_Q/%3Fauto%3Dcompress%252Cformat%26fit%3Dcrop%26crop%3Dtop%26max-h%3D8000%26max-w%3D590%26s%3Db23e0409b13d095e7c58582807cd5bbe/https/videohive.img.customer.envatousercontent.com/files/2724ebed-e71b-4fcf-873f-4a375f5dd1e9/inline_image_preview.jpg");
           background-size: cover;
           color: white;
        }
        
        body {
            display: flex;
            justify-content: space-evenly;
            flex-direction: column;
            align-items: center;
            height: 71vh;
        }
        label, *{
            font-family: system-ui;
            color: white;
        }

        input {
            border-radius: 10px;
            border: 1px solid black;
            padding: 5px;
            margin-top: 10px;
        }
        table{
         margin-top:20px;
            width: 65%;
            padding: 70px;
            color: white;
        }
        a{
            text-decoration: none;
            color: white;
     
        }
        button {
            background-color: #A9A9A9;
            border-radius: 10px;
            padding: 10px;
            margin-top: 250px;
        }
</style>
</head>
<body>
	<p>Agenda de viagens</p>

	<p>
		<a href="viagens/form">Cadastrar nova</a>
	</p>

	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Data de decolagem</th>
				<th>Tempo de estadia (dias)</th>
				<th>Dias até o retorno</th>

				<th>Nave</th>
				<th>qtd assentos</th>

				<th>1º Comandante</th>
				<th>Matrícula</th>

				<th>2º Comandante</th>
				<th>Matrícula</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="viagem" items="${viagens}">
				<tr>
					<td>${viagem.id}</td>
					<td>${viagem.date}</td>
					<td>${viagem.tempoEstadia}</td>
					<td>${viagem.tempoEstadia + (290*2)}</td>

					<td>${viagem.modeloNave}</td>
					<td>${viagem.qtAssentos}</td>
					<td>${viagem.nomePrimeiroComandante}</td>
					<td>${viagem.idPrimeiroComandante}</td>
					<td>${viagem.nomeSegundoComandante}</td>
					<td>${viagem.idSegundoComandante}</td>


					<td><a href="viagens/${viagem.id}">Editar</a></td>
					<td><a href="viagens/${viagem.id}/delete">Deletar</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>