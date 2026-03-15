.class public Lcom/google/android/settings/aware/WakeScreenDialogGesturePreferenceController;
.super Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;
.source "WakeScreenDialogGesturePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isGestureEnabled()Z
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    iget-object v1, p0, Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/aware/AwareFeatureProvider;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_wake_screen_gesture"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/settings/aware/WakeScreenDialogGesturePreferenceController;->isGestureEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f120104

    goto :goto_0

    :cond_0
    const p0, 0x7f12070c

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
