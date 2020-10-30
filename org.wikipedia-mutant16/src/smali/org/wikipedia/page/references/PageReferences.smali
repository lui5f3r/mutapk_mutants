.class public Lorg/wikipedia/page/references/PageReferences;
.super Ljava/lang/Object;
.source "PageReferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/wikipedia/page/references/PageReferences$Reference;
    }
.end annotation


# instance fields
.field private referencesGroup:[Lorg/wikipedia/page/references/PageReferences$Reference;

.field private selectedIndex:I

.field private tid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReferencesGroup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/references/PageReferences$Reference;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/wikipedia/page/references/PageReferences;->referencesGroup:[Lorg/wikipedia/page/references/PageReferences$Reference;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/wikipedia/page/references/PageReferences;->selectedIndex:I

    return v0
.end method
