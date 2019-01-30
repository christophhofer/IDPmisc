p.ai <-
    function(Td, warn = TRUE) {
        ## Author: Rene Locher
        ## Version 2019-01-30

        ## cf. Guide to Meteorological Instruments and Methods of Observation,
        ## WMO, WMO-No. 8, Seventh edition, 2008, 1.4-29 Annex 4.B
        ## Vapour pressure above ice
        ## Temperature range -65 < T < 0°C
        ## [Td] = [°C], [p] = [hPa]
        x <- Td
        x[is.na(x)] <- 0
        if (any(x < -65 | x > 0) & warn)
            warning("Some temperatures are less than -60°C or more than 0°C!")
        return(6.112 * exp(22.46*Td/(272.62 + Td)))
    }
