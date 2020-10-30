.class public interface abstract Lorg/wikipedia/page/references/ReferenceDialog$Callback;
.super Ljava/lang/Object;
.source "ReferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/references/ReferenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getLinkHandler()Lorg/wikipedia/page/LinkHandler;
.end method

.method public abstract getReferencesGroup()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/references/PageReferences$Reference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedReferenceIndex()I
.end method
