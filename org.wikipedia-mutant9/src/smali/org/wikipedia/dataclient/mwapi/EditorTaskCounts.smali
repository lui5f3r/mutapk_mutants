.class public Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;
.super Ljava/lang/Object;
.source "EditorTaskCounts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;,
        Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;
    }
.end annotation


# instance fields
.field private counts:Lcom/google/gson/JsonElement;

.field private editStreak:Lcom/google/gson/JsonElement;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "edit_streak"
    .end annotation
.end field

.field private revertCounts:Lcom/google/gson/JsonElement;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "revert_counts"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCaptionEditsPerLanguage()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->counts:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->counts:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->access$100(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getCaptionRevertsPerLanguage()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->revertCounts:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    .line 95
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->revertCounts:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->access$100(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getDescriptionEditsPerLanguage()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->counts:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->counts:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->access$000(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getDescriptionRevertsPerLanguage()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->revertCounts:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->revertCounts:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->access$000(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 88
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private getTotalDepictsReverts()I
    .locals 4

    .line 102
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->revertCounts:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->revertCounts:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->access$200(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "*"

    .line 105
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1
.end method


# virtual methods
.method public getEditStreak()I
    .locals 3

    .line 124
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->editStreak:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->editStreak:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;

    .line 128
    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;->access$300(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastEditDate()Ljava/util/Date;
    .locals 4

    .line 133
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 134
    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->editStreak:Lcom/google/gson/JsonElement;

    if-eqz v1, :cond_1

    instance-of v1, v1, Lcom/google/gson/JsonArray;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->editStreak:Lcom/google/gson/JsonElement;

    const-class v3, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;

    .line 139
    :try_start_0
    invoke-static {v1}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;->access$400(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$EditStreak;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/wikipedia/util/DateUtil;->dbDateParse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getTotalDepictsEdits()I
    .locals 4

    .line 45
    iget-object v0, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->counts:Lcom/google/gson/JsonElement;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/google/gson/JsonArray;

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Lorg/wikipedia/json/GsonUtil;->getDefaultGson()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->counts:Lcom/google/gson/JsonElement;

    const-class v2, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;

    invoke-static {v0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;->access$200(Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts$Counts;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "*"

    .line 48
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1
.end method

.method public getTotalDescriptionEdits()I
    .locals 3

    .line 68
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getDescriptionEditsPerLanguage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTotalEdits()I
    .locals 3

    .line 53
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getDescriptionEditsPerLanguage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 56
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getCaptionEditsPerLanguage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalDepictsEdits()I

    move-result v0

    add-int/2addr v1, v0

    .line 60
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldOverrideSuggestedEditCounts()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOverrideSuggestedEditCount()I

    move-result v1

    :cond_2
    return v1
.end method

.method public getTotalImageCaptionEdits()I
    .locals 3

    .line 76
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getCaptionEditsPerLanguage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getTotalReverts()I
    .locals 3

    .line 110
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getDescriptionRevertsPerLanguage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 113
    :cond_0
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getCaptionRevertsPerLanguage()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 116
    :cond_1
    invoke-direct {p0}, Lorg/wikipedia/dataclient/mwapi/EditorTaskCounts;->getTotalDepictsReverts()I

    move-result v0

    add-int/2addr v1, v0

    .line 117
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->shouldOverrideSuggestedEditCounts()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getOverrideSuggestedRevertCount()I

    move-result v1

    :cond_2
    return v1
.end method
