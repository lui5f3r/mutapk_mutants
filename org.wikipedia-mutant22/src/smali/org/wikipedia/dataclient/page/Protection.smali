.class public Lorg/wikipedia/dataclient/page/Protection;
.super Ljava/lang/Object;
.source "Protection.java"


# instance fields
.field private edit:Ljava/lang/String;

.field private expiry:Ljava/lang/String;

.field private level:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEditRoles()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    iget-object v1, p0, Lorg/wikipedia/dataclient/page/Protection;->edit:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getExpiry()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/Protection;->expiry:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstAllowedEditorRole()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/Protection;->edit:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/Protection;->level:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/wikipedia/dataclient/page/Protection;->type:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
