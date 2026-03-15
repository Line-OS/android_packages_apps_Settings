.class public Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAutoclickPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final mAutoclickPreferenceSummaries:[I


# instance fields
.field private mDelay:Lcom/android/settings/widget/SeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 62
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    .line 191
    new-instance v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    :array_0
    .array-data 4
        0x7f100004
        0x7f100008
        0x7f100006
        0x7f100005
        0x7f100007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private delayToSeekBarProgress(I)I
    .locals 0

    add-int/lit16 p1, p1, -0xc8

    .line 188
    div-int/lit8 p1, p1, 0x64

    return p1
.end method

.method static getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 4

    .line 84
    invoke-static {p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummaryIndex(I)I

    move-result v0

    .line 85
    sget-object v1, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    aget v0, v1, v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 85
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAutoclickPreferenceSummaryIndex(I)I
    .locals 3

    const/16 v0, 0xc8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_1

    .line 97
    sget-object p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0

    :cond_1
    const/16 v1, 0x320

    .line 99
    sget-object v2, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mAutoclickPreferenceSummaries:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    sub-int/2addr p0, v0

    .line 101
    div-int/2addr p0, v1

    return p0
.end method

.method private seekBarProgressToDelay(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0x64

    add-int/lit16 p1, p1, 0xc8

    return p1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f120765

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x14f

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f150001

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_autoclick_delay"

    const/16 v1, 0x258

    .line 129
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "autoclick_delay"

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    .line 136
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    const/16 v1, 0x3e8

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->delayToSeekBarProgress(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 138
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object p0, p0, Lcom/android/settings/SettingsPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p0

    const p1, 0x7f120031

    .line 140
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 5

    .line 145
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_autoclick_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 151
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne v0, v3, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    if-ne p1, v0, :cond_0

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    check-cast p2, Ljava/lang/Integer;

    .line 170
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->seekBarProgressToDelay(I)I

    move-result p0

    const-string p2, "accessibility_autoclick_delay"

    .line 168
    invoke-static {p1, p2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->mDelay:Lcom/android/settings/widget/SeekBarPreference;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    const-string p1, "accessibility_autoclick_enabled"

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    return-void
.end method
