.class public Lcom/android/settings/tts/TtsEnginePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TtsEnginePreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentEngine:Ljava/lang/String;

.field private mEnginePreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private mPreviousEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 186
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 52
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 116
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment$1;-><init>(Lcom/android/settings/tts/TtsEnginePreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method private initSettings()V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v0}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 91
    new-instance v2, Lcom/android/settings/tts/TtsEnginePreference;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0}, Lcom/android/settings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginePreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating default synth to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TtsEnginePrefFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    const-string v0, "Shutting down current tts engine"

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating engine : Attempting to connect to engine: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    const-string p0, "Success"

    .line 150
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentChecked:Landroid/widget/Checkable;

    return-object p0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5d

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1500b1

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "tts_engine_preference_category"

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginePreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 61
    new-instance p1, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 63
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 65
    invoke-direct {p0}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->initSettings()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 75
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    :cond_0
    return-void
.end method

.method public onUpdateEngine(I)V
    .locals 3

    const-string v0, "TtsEnginePrefFragment"

    if-nez p1, :cond_0

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating engine: Successfully bound to the engine: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 164
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object p0

    const-string v0, "tts_default_synth"

    .line 165
    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "Updating engine: Failed to bind to engine, reverting."

    .line 168
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 172
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {p1, v1, v0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 176
    :cond_1
    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mPreviousEngine:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentChecked:Landroid/widget/Checkable;

    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    .line 183
    iget-object p1, p0, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/tts/TtsEnginePreferenceFragment;->updateDefaultEngine(Ljava/lang/String;)V

    return-void
.end method
