package es.albarregas.models;

import es.albarregas.exceptions.DivisionPorCeroException;

public class Divisor {

    public int dividir(int dividendo, int divisor) throws DivisionPorCeroException {
        int resultado = 0;
        if (divisor != 0) {
            resultado = dividendo / divisor;
        } else {
            throw new DivisionPorCeroException("Se ha intentado dividir por cero");
        }
        return resultado;
    }

}
