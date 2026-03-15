.class public Lcom/google/android/settings/aware/AwareSettingsActivity;
.super Landroid/app/Activity;
.source "AwareSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 3

    .line 26
    new-instance v0, Lcom/google/android/settings/aware/AwareHelper;

    invoke-direct {v0, p0}, Lcom/google/android/settings/aware/AwareHelper;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "low_power"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-nez p0, :cond_1

    .line 31
    invoke-virtual {v0}, Lcom/google/android/settings/aware/AwareHelper;->isAirplaneModeOn()Z

    move-result p0

    if-nez p0, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/google/android/settings/aware/AwareHelper;->isSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 33
    invoke-virtual {v0}, Lcom/google/android/settings/aware/AwareHelper;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method private launchSubSettings(I)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    return-void

    .line 52
    :cond_0
    const-class p1, Lcom/google/android/settings/aware/AwareSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "show_aware_dialog_enabled"

    goto :goto_0

    .line 56
    :cond_1
    const-class p1, Lcom/android/settings/system/SystemDashboardFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "show_aware_dialog_disabled"

    goto :goto_0

    .line 60
    :cond_2
    const-class p1, Lcom/google/android/settings/aware/AwareSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 66
    :goto_0
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 68
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {v2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    .line 73
    :cond_3
    invoke-virtual {v2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "show_aware_dialog"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/settings/aware/AwareSettingsActivity;->launchSubSettings(I)V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
