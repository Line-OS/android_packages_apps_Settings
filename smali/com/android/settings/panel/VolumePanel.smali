.class public Lcom/android/settings/panel/VolumePanel;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/settings/panel/PanelContent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/VolumePanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/settings/panel/VolumePanel;
    .locals 1

    .line 43
    new-instance v0, Lcom/android/settings/panel/VolumePanel;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/VolumePanel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x677

    return p0
.end method

.method public getSeeMoreIntent()Landroid/content/Intent;
    .locals 1

    .line 71
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.SOUND_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSlices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/notification/RemoteVolumePreferenceController;->getActiveRemoteToken(Landroid/content/Context;)Landroid/media/session/MediaSession$Token;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 59
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_REMOTE_MEDIA_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_MEDIA_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->MEDIA_OUTPUT_INDICATOR_SLICE_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_CALL_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_RINGER_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->VOLUME_ALARM_URI:Landroid/net/Uri;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 52
    iget-object p0, p0, Lcom/android/settings/panel/VolumePanel;->mContext:Landroid/content/Context;

    const v0, 0x7f121075

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
