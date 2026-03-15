.class public Lcom/google/android/settings/aware/SkipGestureDialogPreference;
.super Lcom/google/android/settings/aware/AwareGestureDialogPreference;
.source "SkipGestureDialogPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getDestination()Ljava/lang/String;
    .locals 0

    .line 22
    const-class p0, Lcom/google/android/settings/aware/SkipGestureSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getDialogDisabledMessage()I
    .locals 0

    const p0, 0x7f1206ff

    return p0
.end method

.method public getGestureDialogMessage()I
    .locals 0

    const p0, 0x7f120701

    return p0
.end method

.method public getGestureDialogTitle()I
    .locals 0

    const p0, 0x7f120702

    return p0
.end method

.method public getSourceMetricsCategory()I
    .locals 0

    const/16 p0, 0x1cb

    return p0
.end method

.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 9
    invoke-super {p0, p1, p2}, Lcom/google/android/settings/aware/AwareGestureDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
