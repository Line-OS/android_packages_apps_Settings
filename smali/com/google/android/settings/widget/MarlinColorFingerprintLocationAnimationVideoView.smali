.class public Lcom/google/android/settings/widget/MarlinColorFingerprintLocationAnimationVideoView;
.super Lcom/google/android/setupdesign/view/IllustrationVideoView;
.source "MarlinColorFingerprintLocationAnimationVideoView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/google/android/settings/widget/MarlinColorFingerprintLocationAnimationVideoView;->getDeviceColorTheme(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/view/IllustrationVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static getDeviceColorTheme(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    const-string v0, "ro.boot.hardware.color"

    .line 25
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BLU00"

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f130124

    goto :goto_0

    :cond_0
    const-string v1, "SLV00"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f130126

    goto :goto_0

    :cond_1
    const-string v1, "GRA00"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f130125

    goto :goto_0

    :cond_2
    const v0, 0x7f130123

    .line 36
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method
