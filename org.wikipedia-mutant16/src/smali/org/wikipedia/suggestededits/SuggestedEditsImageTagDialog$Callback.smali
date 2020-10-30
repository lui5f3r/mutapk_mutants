.class public interface abstract Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog$Callback;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onSearchDismiss(Ljava/lang/String;)V
.end method

.method public abstract onSearchSelect(Lorg/wikipedia/dataclient/mwapi/MwQueryPage$ImageLabel;)V
.end method
