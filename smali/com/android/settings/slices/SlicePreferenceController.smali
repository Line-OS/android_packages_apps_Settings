.class public Lcom/android/settings/slices/SlicePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SlicePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/core/BasePreferenceController;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnStart;",
        "Lcom/android/settingslib/core/lifecycle/events/OnStop;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;"
    }
.end annotation


# instance fields
.field mLiveData:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field mSlicePreference:Lcom/android/settings/slices/SlicePreference;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/slices/SlicePreference;

    iput-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mSlicePreference:Lcom/android/settings/slices/SlicePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mSlicePreference:Lcom/android/settings/slices/SlicePreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicePreference;->onSliceUpdated(Landroidx/slice/Slice;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 39
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SlicePreferenceController;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :cond_0
    return-void
.end method

.method public setSliceUri(Landroid/net/Uri;)V
    .locals 1

    .line 63
    iput-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/slices/SlicePreferenceController;->mUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    .line 67
    iget-object p1, p0, Lcom/android/settings/slices/SlicePreferenceController;->mLiveData:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method
