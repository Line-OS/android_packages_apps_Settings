.class public abstract Lcom/google/android/libraries/hats20/model/Question;
.super Ljava/lang/Object;
.source "Question.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/hats20/model/Question$QuestionWithSelectableAnswers;
    }
.end annotation


# static fields
.field private static final READONLY_JSON_KEY_TO_QUESTION_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected questionText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    const/4 v1, 0x1

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "multi-select"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "open-text"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rating"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/hats20/model/Question;->READONLY_JSON_KEY_TO_QUESTION_TYPE:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getQuestionTypeFromString(Ljava/lang/String;)I
    .locals 3

    .line 69
    sget-object v0, Lcom/google/android/libraries/hats20/model/Question;->READONLY_JSON_KEY_TO_QUESTION_TYPE:Ljava/util/Map;

    .line 70
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "Question string %s was not found in the json to QuestionType map"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getQuestionsFromSurveyDefinition(Lorg/json/JSONObject;)[Lcom/google/android/libraries/hats20/model/Question;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "payload"

    .line 111
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "longform_questions"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/libraries/hats20/model/Question;

    const/4 v1, 0x0

    move v2, v1

    .line 115
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 116
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    .line 117
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    invoke-static {v4}, Lcom/google/android/libraries/hats20/model/Question;->getQuestionTypeFromString(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    const/4 v9, 0x4

    if-ne v5, v9, :cond_0

    .line 132
    new-instance v4, Lcom/google/android/libraries/hats20/model/QuestionRating;

    invoke-direct {v4, v3}, Lcom/google/android/libraries/hats20/model/QuestionRating;-><init>(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 135
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v4, v0, v1

    const-string v1, "Attempted to deserialize an unsupported question type.  Unsupported type was: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_1
    new-instance v4, Lcom/google/android/libraries/hats20/model/QuestionOpenText;

    invoke-direct {v4, v3}, Lcom/google/android/libraries/hats20/model/QuestionOpenText;-><init>(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 126
    :cond_2
    new-instance v4, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;

    invoke-direct {v4, v3}, Lcom/google/android/libraries/hats20/model/QuestionMultipleSelect;-><init>(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 123
    :cond_3
    new-instance v4, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;

    invoke-direct {v4, v3}, Lcom/google/android/libraries/hats20/model/QuestionMultipleChoice;-><init>(Lorg/json/JSONObject;)V

    .line 139
    :goto_1
    aput-object v4, v0, v2

    .line 141
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v6, [Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    .line 145
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    .line 146
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v7

    const-string v4, "Parsed question %d of %d with content %s"

    .line 141
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "HatsLibQuestionClass"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static toEmptyArrayIfNull(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 0

    if-nez p0, :cond_0

    .line 97
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getQuestionText()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/google/android/libraries/hats20/model/Question;->questionText:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getType()I
.end method
