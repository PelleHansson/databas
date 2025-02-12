from graphviz import Digraph

def create_uml_diagram():
    dot = Digraph('Theater Ticket System', format='png')
    
    # Customer Class
    dot.node('Customer', """Customer\n--------------\n+ customerID: int {PK}\n+ name: string\n+ email: string {unique}\n+ phoneNumber: string {unique}""", shape='rectangle')
    
    # Ticket Class
    dot.node('Ticket', """Ticket\n--------------\n+ ticketID: int {PK}\n+ seatNumber: string\n+ price: float\n+ showTime: datetime""", shape='rectangle')
    
    # Movie Class
    dot.node('Movie', """Movie\n--------------\n+ movieID: int {PK}\n+ title: string\n+ genre: string\n+ duration: int""", shape='rectangle')
    
    # Theater Class
    dot.node('Theater', """Theater\n--------------\n+ theaterID: int {PK}\n+ name: string\n+ location: string""", shape='rectangle')
    
    # Relationships with cardinality
    dot.edge('Customer', 'Ticket', label='1:M')
    dot.edge('Ticket', 'Movie', label='M:1')
    dot.edge('Movie', 'Theater', label='M:1')
    
    return dot

# Generate the UML Diagram
uml_diagram = create_uml_diagram()
uml_diagram.render('theater_ticket_uml', view=True)