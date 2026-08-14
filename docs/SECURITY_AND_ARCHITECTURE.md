# Documentación de Arquitectura y Seguridad - Café Boreal

## 1. Modelo de Amenazas (STRIDE)
- **Spoofing:** Mitigado mediante certificados SSL/TLS en Nginx y autenticación en endpoints.
- **Tampering:** Integridad asegurada con cifrado AES-256 (`pgcrypto`) en PostgreSQL para datos sensibles.
- **Repudiation:** Registro y centralización de logs con Grafana Loki.
- **Information Disclosure:** Aislamiento de red interna con Docker `cafe-network`.
- **Denial of Service:** Proxy Nginx gestionando el tráfico y límites de concurrencia.
- **Elevation of Privilege:** Contenedores ejecutándose con usuarios no privilegiados.

## 2. Acuerdos de Nivel de Servicio (SLA)
- **Disponibilidad:** 99.9% uptime.
- **Protección de Datos:** Datos confidenciales cifrados con `pgp_sym_encrypt`.
