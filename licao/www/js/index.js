var app = {
        

    initialize: function() {
        document.addEventListener('deviceready', this.onDeviceReady.bind(this), false);
    },

    onDeviceReady: function() {
        document.getElementById("btnInserir").addEventListener("click",app.inserir);
        document.getElementById("btnListar").addEventListener("click",app.listar);
        this.receivedEvent('deviceready');
    },

    receivedEvent: function(id) {
        banco = window.sqlitePlugin.openDatabase({
            name: 'Konoha',
            location: 'default',            
            androidDatabaseProvider: 'system'
        });

        banco.transaction(function(tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS usuarios (name, senha)');
        }, function(error) {
            console.log('Transaction ERROR: ' + error.message);
        }, function() {
            alert('Banco e Tabela criados com sucesso!');
        });
    },

    inserir: function(){
        let name = document.getElementById("txtLogin").value;
        let senha = document.getElementById("txtPassword").value;

        banco.transaction(function(tx) {
            tx.executeSql('INSERT INTO usuarios VALUES (?,?)', [name, senha]);
        }, function(error) {
            alert('Erro durante a transacao com o banco: ' + error.message);
        }, function() {
            alert('Insercao realizada com sucesso!');
        });
    },
    
    listar: function(){
        banco.executeSql(
            'SELECT name AS txtLogin, pass AS txtPassword FROM usuarios', [], function(rs) {
                alert(JSON.stringify(rs));
                alert(rs.rows.length);
                let i = 0;
                for(i = 0; i < rs.rows.length; i++){
                    alert("item "+i);
                    let recordItem = rs.rows.item(i);
                    alert(JSON.stringify(recordItem));
                }                
        }, function(error) {
            alert('Erro no SELECT: ' + error.message);
        });
    }
};

app.initialize();