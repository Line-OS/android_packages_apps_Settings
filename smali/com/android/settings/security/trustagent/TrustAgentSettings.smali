.class public Lcom/android/settings/security/trustagent/TrustAgentSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TrustAgentSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/android/settings/security/trustagent/TrustAgentSettings$1;

    invoke-direct {v0}, Lcom/android/settings/security/trustagent/TrustAgentSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/security/trustagent/TrustAgentSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f12078b

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TrustAgentSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5b

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1500b0

    return p0
.end method
