.class public Lcom/android/settings/slices/SliceDeepLinkSpringBoard;
.super Landroid/app/Activity;
.source "SliceDeepLinkSpringBoard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static parse(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1

    const-string v0, "slice"

    .line 74
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->parse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "DeeplinkSpringboard"

    if-nez p1, :cond_0

    const-string p1, "No data found"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 47
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->isValidUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    invoke-static {p1}, Lcom/android/settings/slices/CustomSliceRegistry;->getSliceClassByUri(Landroid/net/Uri;)Ljava/lang/Class;

    move-result-object p1

    .line 49
    invoke-static {v1, p1}, Lcom/android/settings/slices/CustomSliceable;->createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/android/settings/slices/CustomSliceable;

    move-result-object p1

    .line 51
    invoke-interface {p1}, Lcom/android/settings/slices/CustomSliceable;->getIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 52
    :cond_1
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->ZEN_MODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-static {p0}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 54
    :cond_2
    sget-object v1, Lcom/android/settings/slices/CustomSliceRegistry;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_3
    new-instance v1, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-direct {v1, p0}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-virtual {v1, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object p1

    .line 64
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "Couldn\'t launch Slice intent"

    .line 67
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method
