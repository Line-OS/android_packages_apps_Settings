.class public Lcom/android/settings/display/NightDisplayCustomEndTimePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NightDisplayCustomEndTimePreferenceController.java"


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/ColorDisplayManager;

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayCustomEndTimePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 33
    new-instance p2, Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/NightDisplayTimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayCustomEndTimePreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomEndTimePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 45
    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayCustomEndTimePreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    iget-object p0, p0, Lcom/android/settings/display/NightDisplayCustomEndTimePreferenceController;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 48
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object p0

    .line 47
    invoke-virtual {v0, p0}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
