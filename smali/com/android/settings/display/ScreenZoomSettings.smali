.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    aget v0, v0, v1

    .line 102
    iget p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_0

    .line 103
    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity(I)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {v1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V

    :goto_0
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 91
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    const p0, 0x7f0d017d

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f12076f

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x153

    return p0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 2

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [I

    .line 55
    fill-array-data p0, :array_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const v1, 0x7f0d017e

    aput v1, p0, v0

    :goto_0
    return-object p0

    :array_0
    .array-data 4
        0x7f0d017e
        0x7f0d017f
        0x7f0d0181
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndex()I

    move-result v0

    if-gez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 74
    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 75
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 77
    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getValues()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 80
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getEntries()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 82
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 85
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f120cbd

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
