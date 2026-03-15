.class public Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AwareGesturesCategoryPreferenceController.java"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;->mContext:Landroid/content/Context;

    .line 20
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/aware/AwareGesturesCategoryPreferenceController;->mFeatureProvider:Lcom/android/settings/aware/AwareFeatureProvider;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 p0, 0x0

    const-string v0, "ro.vendor.aware_available"

    .line 28
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method
