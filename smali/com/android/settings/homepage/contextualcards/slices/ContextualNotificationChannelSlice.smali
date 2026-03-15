.class public Lcom/android/settings/homepage/contextualcards/slices/ContextualNotificationChannelSlice;
.super Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;
.source "ContextualNotificationChannelSlice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    .line 61
    const-class p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelWorker;

    return-object p0
.end method

.method protected getSubTitle(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const p1, 0x7f120c28

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    .line 42
    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_NOTIFICATION_CHANNEL_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method protected isUserInteracted(Ljava/lang/String;)Z
    .locals 2

    .line 53
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->mContext:Landroid/content/Context;

    const-string v0, "notification_channel_slice_prefs"

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string v1, "interacted_packages"

    .line 55
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    .line 56
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
