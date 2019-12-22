IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191221164658_InitialCreate')
BEGIN
    CREATE TABLE [Films] (
        [Id] int NOT NULL IDENTITY,
        [Baslik] nvarchar(max) NULL,
        [YaziGiris] datetime2 NOT NULL,
        [Etiket] nvarchar(max) NULL,
        [Yazi] nvarchar(max) NULL,
        CONSTRAINT [PK_Films] PRIMARY KEY ([Id])
    );
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191221164658_InitialCreate')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191221164658_InitialCreate', N'3.1.0');
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191221181712_ResimUrl')
BEGIN
    ALTER TABLE [Films] ADD [ResimUrl] nvarchar(max) NULL;
END;

GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20191221181712_ResimUrl')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20191221181712_ResimUrl', N'3.1.0');
END;

GO

