.class public interface abstract Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment$Callback;
.super Ljava/lang/Object;
.source "SuggestedEditsImageTagsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/suggestededits/SuggestedEditsImageTagsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getLangCode()Ljava/lang/String;
.end method

.method public abstract getSinglePage()Lorg/wikipedia/dataclient/mwapi/MwQueryPage;
.end method

.method public abstract logSuccess()V
.end method

.method public abstract nextPage(Landroidx/fragment/app/Fragment;)V
.end method

.method public abstract updateActionButton()V
.end method
