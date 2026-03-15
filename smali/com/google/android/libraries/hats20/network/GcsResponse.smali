.class public Lcom/google/android/libraries/hats20/network/GcsResponse;
.super Ljava/lang/Object;
.source "GcsResponse.java"


# instance fields
.field private final expirationDateUnix:J

.field private final responseCode:I

.field private final surveyJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/google/android/libraries/hats20/network/GcsResponse;->responseCode:I

    .line 20
    iput-wide p2, p0, Lcom/google/android/libraries/hats20/network/GcsResponse;->expirationDateUnix:J

    .line 21
    iput-object p4, p0, Lcom/google/android/libraries/hats20/network/GcsResponse;->surveyJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public expirationDateUnix()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/google/android/libraries/hats20/network/GcsResponse;->expirationDateUnix:J

    return-wide v0
.end method

.method public getResponseCode()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/google/android/libraries/hats20/network/GcsResponse;->responseCode:I

    return p0
.end method

.method public getSurveyJson()Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/google/android/libraries/hats20/network/GcsResponse;->surveyJson:Ljava/lang/String;

    return-object p0
.end method
