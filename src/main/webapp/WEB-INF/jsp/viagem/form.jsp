<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<style>

 html{
            background-image: url("https://images-ext-2.discordapp.net/external/y9dLQrJh_AFSgyvz_Qr2HLtzhhq9Mvsru6D6T7boZ_Q/%3Fauto%3Dcompress%252Cformat%26fit%3Dcrop%26crop%3Dtop%26max-h%3D8000%26max-w%3D590%26s%3Db23e0409b13d095e7c58582807cd5bbe/https/videohive.img.customer.envatousercontent.com/files/2724ebed-e71b-4fcf-873f-4a375f5dd1e9/inline_image_preview.jpg");
            background-size: cover;
            color: white;
        }
</style>
<meta charset="ISO-8859-1">
<title>Cadastrar nova viagem.</title>
</head>

<body>

	<!-- MENSAGEM SUCESSO -->
	<c:if test="${addViagemSucess}">
		<h3>Viagem Agendada com Sucesso. Id: ${savedViagem.id}</h3>
	</c:if>


	<!-- FORM VIAGEM -->
	<c:url var="save_viagem_url" value="/viagens/save" />
	<form:form action="${save_viagem_url}" method="post"
		modelAttribute="viagem">

		<!-- CRONOGRAMA DA VIAGEM -->
		<fieldset>
			<form:label path="id">Id: ${id}</form:label>
			<br>
			<form:input type="text" path="id" readonly="true" />
			<br>

			<legend>CRONOGRAMA DA VIAGEM</legend>
			<form:label path="date">Data de Decolagem:</form:label>
			<br>
			<form:input type="date" path="date" />
			<br>

			<form:label path="tempoEstadia">Tempo em dias da Estadia:</form:label>
			<br>
			<form:input type="number" path="tempoEstadia" min="0" />
			<br>
		</fieldset>

		<!-- INFORMAÇÕES DA NAVE -->
		<fieldset>
			<legend>INFORMAÇÕES DA NAVE</legend>

			<form:label path="qtAssentos" hover="apenas múltiplos de 3">Quantidade de Assentos:</form:label>
			<br>
			<form:input type="number" step="3" min="0" path="qtAssentos" />
			<br>

			<form:label path="modeloNave">Modelo da Nave:</form:label>
			<br>
			<form:input type="text" pattern="[A-Za-z]{4}-[1-9]{4}"
				placeholder="AAAA-1234" title="Insira o formato válido: AAAA-9999"
				path="modeloNave" />
			<br>
		</fieldset>

		<!-- COMANDO DA VIAGEM -->
		<fieldset>
			<legend>COMANDO DA VIAGEM</legend>


			<!-- PRIMEIRO COMANDANTE -->
			<form:label path="nomePrimeiroComandante">Nome do Primeiro Comandante</form:label>
			<br>
			<form:input type="text" path="nomePrimeiroComandante" />
			<br>

			<form:label path="nomePrimeiroComandante">Matrícula do Primeiro Comandante</form:label>
			<br>
			<form:input type="text"
				pattern="[A-Za-z]{3}-[1-9]{4}-[A-Za-z]{1}[1-9]{1}[A-Za-z]{1}"
				placeholder="AAA-9999-A9A"
				title="Insira o formato válido: AAA-9999-A9A"
				path="idPrimeiroComandante" />
			<br>
			<!-- SEGUNDO COMANDANTE -->
			<form:label path="nomeSegundoComandante">Nome do Segundo Comandante</form:label>
			<br>
			<form:input type="text" path="nomeSegundoComandante" />
			<br>

			<form:label path="nomePrimeiroComandante">Matrícula do Segundo Comandante</form:label>
			<br>
			<form:input type="text"
				pattern="[A-Za-z]{3}-[1-9]{4}-[A-Za-z]{1}[1-9]{1}[A-Za-z]{1}"
				placeholder="AAA-9999-A9A"
				title="Insira o formato válido: AAA-9999-A9A"
				path="idSegundoComandante" />
			<br>
		</fieldset>

		<input type="submit" name="salvar" value="Salvar" />
	</form:form>

</body>
</html>