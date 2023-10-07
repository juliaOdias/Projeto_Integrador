import os

from flask import Flask, request, render_template, jsonify, url_for, redirect, session
import mysql.connector

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = 'static/images'

app.secret_key = 'AFEFAE1234135135'

def cadastrar_pessoa_no_banco(request):
    try:
        
        conn = mysql.connector.connect(
            host='localhost',
            port=3306,  # Specify the port separately
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()
        
        Nome = request.form['Nome']
        Telefone = request.form['Telefone']
        Usuario = request.form['Usuario']
        Bairro = request.form['Bairro']
        Email = request.form['Email']
        Senha = request.form['Senha']

        # SQL query to insert data into 'cadastropessoas' table
        query = """
               INSERT INTO cadastropessoas (Nome, Telefone, Usuario, Bairro, Email, Senha)
               VALUES (%s, %s, %s, %s, %s, %s)
           """
        cursor.execute(query, (
        Nome, Telefone, Usuario, Bairro, Email, Senha))
        conn.commit()

        return jsonify({'message': 'Data inserted successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        cursor.close()
        conn.close()

def cadastrar_pet_no_banco(request):
    try:
        
        conn = mysql.connector.connect(
            host='localhost',
            port=3306,  # Specify the port separately
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()
        file = request.files['pet_image']
        if file and file.filename.endswith(('.jpeg')):
            filename = request.form['pet_name'] + ".jpeg"
            file.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
        pet_name = request.form['pet_name']
        pet_race = request.form['pet_race']
        pet_species = request.form['pet_species']
        pet_gender = request.form['pet_gender']
        pet_size = request.form['pet_size']
        pet_idade = request.form['pet_idade']
        pet_color = request.form['pet_color']
        pet_castrated = request.form['pet_castrated']
        pet_disease = request.form['pet_disease']
        pet_medication = request.form['pet_medication']
        pet_aggressive = request.form['pet_aggressive']
        pet_eyes = request.form['pet_eyes']
        pet_dono = request.form['pet_dono']

        # SQL query to insert data into 'cadastropet' table
        query = """
               INSERT INTO cadastropet (Imagem, Nome, Raca, Especie, Genero, Porte, Idade, Cor, Castrado, Doenca, Medicamento, Agressivo, CorDosOlhos, Situacao, pessoa_id)
               VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
           """
        cursor.execute(query, (
        pet_name + ".jpeg", pet_name, pet_race, pet_species, pet_gender, pet_size, pet_idade, pet_color, pet_castrated, pet_disease, pet_medication, pet_aggressive,
        pet_eyes, pet_dono, session['usuarioLogado']))
        conn.commit()

        return jsonify({'message': 'Data inserted successfully'}), 200
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        cursor.close()
        conn.close()


def buscar_meus_pets_no_banco():
    try:

        conn = mysql.connector.connect(
            host='localhost',
            port=3306,  # Specify the port separately
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()
        user_id = session.get('usuarioLogado')

        # SQL query to select data from 'cadastropet' table
        query = """
            SELECT Nome, Raca, Especie, Genero, Porte, Idade, Cor, Castrado, Doenca, Medicamento, Agressivo, CorDosOlhos, Situacao, id, imagem, pessoa_id
            FROM cadastropet
            WHERE pessoa_id = %s
        """
        cursor.execute(query, (user_id,))
        data = cursor.fetchall()

        # Create an array of pets
        pets = []
        for row in data:
            pet = {
                'nome': row[0],
                'raca': row[1],
                'especie': row[2],
                'genero': row[3],
                'porte': row[4],
                'idade': row[5],
                'cor': row[6],
                'castrado': row[7],
                'doenca': row[8],
                'medicamento': row[9],
                'agressivo': row[10],
                'cordosolhos': row[11],
                'situacao': row[12],
                'id': row[13],
                'imagem': row[14],
                'pessoa_id': row[15]
            }
            pets.append(pet)

        return pets
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        cursor.close()
        conn.close()
def buscar_pets_no_banco():
    try:
        
        conn = mysql.connector.connect(
            host='localhost',
            port=3306,  # Specify the port separately
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()
        
        # SQL query to select data from 'cadastropet' table
        query = """
            SELECT Nome, Raca, Especie, Genero, Porte, Idade, Cor, Castrado, Doenca, Medicamento, Agressivo, CorDosOlhos, Situacao, imagem, pessoa_id
            FROM cadastropet
        """
        cursor.execute(query)
        data = cursor.fetchall()

        # Create an array of pets
        pets = []
        for row in data:
            pet = {
                'nome': row[0],
                'raca': row[1],
                'especie': row[2],
                'genero': row[3],
                'porte': row[4],
                'idade': row[5],
                'cor': row[6],
                'castrado': row[7],
                'doenca': row[8],
                'medicamento': row[9],
                'agressivo': row[10],
                'cordosolhos': row[11],
                'situacao': row[12],
                'imagem': row[13],
                'pessoa_id': row[14]
            }
            pets.append(pet)

        return pets
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        cursor.close()
        conn.close()
@app.route('/buscar_usuario_por_id', methods=['GET'])
def buscar_usuario_por_id():
    try:
        conn = mysql.connector.connect(
            host='localhost',
            port=3306,
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()

        pessoaId = request.args.get('pessoa_id')
        print(pessoaId)

        query = "SELECT * FROM cadastropessoas WHERE id = %s"
        cursor.execute(query, (pessoaId,))
        dados = cursor.fetchone()

        if dados:
            pessoa = {
                'nome': dados[1],
                'email': dados[5],
                'telefone': dados[3],
                'bairro': dados[4]
            }
            return jsonify(pessoa), 200
        else:
            return jsonify({'error': 'Usuário não encontrado'}), 404

    except Exception as e:
        return jsonify({'error': str(e)}), 500


def carregar_dados_pessoa():
    try:

        conn = mysql.connector.connect(
            host='localhost',
            port=3306,  # Specify the port separately
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()

        usuarioLogado = session['usuarioLogado']
        # SQL query to select data from 'cadastropet' table
        query = "SELECT * FROM cadastropessoas where id = " + str(usuarioLogado)
        cursor.execute(query)
        dados = cursor.fetchone()
        pessoa = {}
        pessoa['nome'] = dados[2]
        pessoa['email'] = dados[-2]
        pessoa['telefone'] = dados[3]
        pessoa['bairro'] = dados[-3]

        return pessoa
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        cursor.close()
        conn.close()


@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        Usuario = request.form['Usuario']
        Senha = request.form['Senha']

        # Crie uma conexão com o banco de dados
        conn = mysql.connector.connect(
            host='localhost',
            port=3306,  # Specify the port separately
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()

        # Execute a consulta para verificar as credenciais
        cursor.execute("SELECT * FROM cadastroPessoas WHERE Usuario = %s", [Usuario])
        user = cursor.fetchone()

        if user[2] == Usuario and user[-1] == Senha:
            session['usuarioLogado'] = user[0]
            return redirect(url_for('inicio'))
        else:
            # Credenciais inválidas, exibir uma mensagem de erro
            error_message = "Credenciais inválidas. Por favor, tente novamente."
            return render_template('login.html', error_message=error_message)

    return render_template('login.html')

@app.route('/inicio')
def inicio():
    pessoa = carregar_dados_pessoa()
    pets = buscar_pets_no_banco()
    print(pets)
    return render_template('inicio.html', pessoa=pessoa, pets=pets)

@app.route('/cadastro', methods=['GET', 'POST'])
def cadastro():
        if request.method == 'POST':
            cadastrar_pessoa_no_banco(request)
            return redirect(url_for('login'))
        return render_template('cadastro.html')

@app.route('/cadastropets', methods=['GET'])
def perfil():
    from flask import redirect
    return render_template('cadastropets.html')

@app.route('/perfil', methods=['GET'])
def cadastropets():
    pets = buscar_meus_pets_no_banco()
    return render_template('perfil.html', dados=pets)


### roteia a url
@app.route('/cadastro_pet', methods=['GET', 'POST'])
def cadastro_pet():
    if request.method == 'POST':

        cadastrar_pet_no_banco(request)

        return redirect(url_for('cadastropets'))

    return jsonify({'error': 'Método inválido'}), 405

@app.route('/excluir_pet/<int:pet_id>', methods=['POST'])
def excluir_pet(pet_id):
    try:
        conn = mysql.connector.connect(
            host='localhost',
            port=3306,
            user='root',
            password='',
            database='cadastros'
        )
        cursor = conn.cursor()

        # SQL query to delete the pet with the specified ID
        query = "DELETE FROM cadastropet WHERE id = %s"
        cursor.execute(query, (pet_id,))
        conn.commit()

        return redirect(url_for('perfil'))
    except Exception as e:
        return jsonify({'error': str(e)}), 500
    finally:
        cursor.close()
        conn.close()


if __name__ == '__main__':
    app.run('0.0.0.0', port=5001)

