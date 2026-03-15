.class public Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;
.super Lcom/android/settings/homepage/contextualcards/ContextualCard;
.source "LegacySuggestionContextualCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;
    }
.end annotation


# instance fields
.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/ContextualCard;-><init>(Lcom/android/settings/homepage/contextualcards/ContextualCard$Builder;)V

    .line 29
    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;->access$000(Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard$Builder;)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public getCardType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/legacysuggestion/LegacySuggestionContextualCard;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method
