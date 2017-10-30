'use strict';

import React from 'react';
import { Button, Modal, ControlLabel, FormControl } from 'react-bootstrap';

const VoteModal = React.createClass({
    getInitialState() {
        return { showModal: false };
    },

    close() {
        this.setState({ showModal: false });
    },

    open() {
        this.setState({ showModal: true });
    },

    render(){
        let { user, url, token } = this.props;
        return (
            <div>
                <Button bsStyle="success" onClick={this.open}>
                    Votar!
                </Button>

                <Modal show={this.state.showModal} onHide={this.close}>
                    <Modal.Header closeButton>
                        <Modal.Title>Você esta votando em {user.name}</Modal.Title>
                    </Modal.Header>
                    <form action={url} method='post'>
                        <Modal.Body>
                            <ControlLabel>Digite seu e-mail Zallpy</ControlLabel>
                            <input name='voter[competitor]' value={user.id} type='hidden' className='form-control' required='true'/>
                            <input name='voter[email]' type='text' className='form-control' required='true'/>
                            <input name="authenticity_token" type="hidden" value={token}/>
                            <input name="utf8" type="hidden" value="✓"/>
                        </Modal.Body>
                        <Modal.Footer>
                            <Button onClick={this.close}>Close</Button>
                            <Button bsStyle="success" type='submit'>Confirmar!</Button>
                        </Modal.Footer>
                    </form>
                </Modal>
            </div>
        );
    }
});

export default VoteModal