async function fetchPokemon() {
    const input = document.getElementById('pokemonInput').value.toLowerCase().trim();
    const card = document.getElementById('pokemonCard');

    try {
        const resposta = await fetch(`https://pokeapi.co/api/v2/pokemon/${input}`);
        
        if (!resposta.ok) throw new Error("Pokémon não encontrado!");

        const data = await resposta.json();

        const nome = data.name.toUpperCase();
        const tipo = data.types.map(t => t.type.name).join(', ');
        const imagem = data.sprites.other['official-artwork'].front_default;

        card.innerHTML = `
            <h2>${nome}</h2>
            <p><strong>Tipo:</strong> ${tipo}</p>
            <img src="${imagem}" alt="${nome}" style="width: 200px">
        `;

    } catch (erro) {
        card.innerHTML = `<p style="color: red;">${erro.message}</p>`;
    }
}
