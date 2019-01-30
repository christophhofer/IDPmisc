p.aw <-
    function(Td, warn = TRUE) {
        ## Author: Rene Locher
        ## Version 2019-01-30

        ## cf. Guide to Meteorological Instruments and Methods of Observation,
        ## WMO, WMO-No. 8, Seventh edition, 2008, 1.4-29 Annex 4.B
        ## Vapour pressure above *liquid* water (also below 0°C)
        ## Temperature range -45 < T < 60°C
        ## [T] = [°C], [p] = [hPa]
        x <- Td
        x[is.na(x)] <- 0
        if (any(x < -45 | x > 60) & warn)
            warning("Some temperatures are less than -45°C or more than 60°C!")
        return(6.112 * exp(17.62*Td/(243.12 + Td)))
    }
