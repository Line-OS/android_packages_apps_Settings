.class public Lcom/google/android/settings/aware/WakeScreenSuggestionActivity;
.super Landroid/app/Activity;
.source "WakeScreenSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 4

    .line 18
    new-instance v0, Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {v0, p0}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v1, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeLockScreenGestureEnabled(I)Z

    move-result v1

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    const-string v3, "low_power"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-nez v1, :cond_1

    if-nez p0, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/google/android/settings/aware/AwareHelper;->isGestureConfigurable()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/google/android/settings/aware/WakeScreenGestureSettings;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
