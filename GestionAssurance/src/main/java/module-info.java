module tg.univ.lome.epl.gestionassurance {
    requires javafx.controls;
    requires javafx.fxml;
    requires java.base;

    opens tg.univ.lome.epl.gestionassurance to javafx.fxml;
    exports tg.univ.lome.epl.gestionassurance;
}
