find /opt/crestelsetup/MOUNT_POINT_PARSING/DISTRIBUTION_0*-7.14.0/bin -name "startServer_610*.sh" -exec sed -i 's/-Xms15000m -Xmx20000m/-Xms40000m -Xmx50000m/g' {} +
