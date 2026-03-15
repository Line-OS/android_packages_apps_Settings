.class public Lcom/android/settings/panel/PanelFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PanelFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/panel/PanelFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPanel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/panel/PanelContent;
    .locals 5

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, -0x1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.settings.panel.action.WIFI"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p0, v2

    goto :goto_0

    :sswitch_1
    const-string v0, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p0, v4

    goto :goto_0

    :sswitch_2
    const-string v0, "android.settings.panel.action.VOLUME"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p0, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.settings.panel.action.INTERNET_CONNECTIVITY"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :sswitch_4
    const-string v0, "android.settings.panel.action.NFC"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p0, v3

    :cond_1
    :goto_0
    if-eqz p0, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    if-eq p0, v2, :cond_3

    if-ne p0, v1, :cond_2

    .line 42
    invoke-static {p1}, Lcom/android/settings/panel/VolumePanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/VolumePanel;

    move-result-object p0

    return-object p0

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No matching panel for: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_3
    invoke-static {p1}, Lcom/android/settings/panel/WifiPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/WifiPanel;

    move-result-object p0

    return-object p0

    .line 38
    :cond_4
    invoke-static {p1}, Lcom/android/settings/panel/NfcPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/NfcPanel;

    move-result-object p0

    return-object p0

    .line 36
    :cond_5
    invoke-static {p1, p3}, Lcom/android/settings/panel/MediaOutputPanel;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/panel/MediaOutputPanel;

    move-result-object p0

    return-object p0

    .line 34
    :cond_6
    invoke-static {p1}, Lcom/android/settings/panel/InternetConnectivityPanel;->create(Landroid/content/Context;)Lcom/android/settings/panel/InternetConnectivityPanel;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x3f46fa9 -> :sswitch_4
        0x1babcc93 -> :sswitch_3
        0x4878fc3c -> :sswitch_2
        0x6ce62c0b -> :sswitch_1
        0x7a9da8b7 -> :sswitch_0
    .end sparse-switch
.end method
