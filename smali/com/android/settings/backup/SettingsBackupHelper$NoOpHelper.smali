.class Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;
.super Ljava/lang/Object;
.source "SettingsBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/SettingsBackupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpHelper"
.end annotation


# instance fields
.field private final VERSION_CODE:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 69
    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput v0, p0, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;->VERSION_CODE:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/SettingsBackupHelper$1;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;-><init>()V

    return-void
.end method

.method private getVersionCode(Landroid/os/ParcelFileDescriptor;)I
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 82
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    .line 83
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-static {p1, v0}, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return v1

    :catchall_0
    move-exception p1

    .line 82
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 84
    :try_start_4
    invoke-static {p1, v0}, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return p0
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    .line 60
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p3, 0x0

    .line 61
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;->getVersionCode(Landroid/os/ParcelFileDescriptor;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const-string p0, "dummy"

    .line 62
    invoke-virtual {p2, p0, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    new-array p0, p1, [B

    .line 63
    invoke-virtual {p2, p0, p1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 67
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write(I)V

    .line 68
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    invoke-static {p3, v0}, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 60
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 69
    :try_start_4
    invoke-static {p0, v0}, Lcom/android/settings/backup/SettingsBackupHelper$NoOpHelper;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 0

    return-void
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    return-void
.end method
