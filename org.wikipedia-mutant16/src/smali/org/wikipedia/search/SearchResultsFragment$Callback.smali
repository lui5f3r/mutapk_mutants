.class public interface abstract Lorg/wikipedia/search/SearchResultsFragment$Callback;
.super Ljava/lang/Object;
.source "SearchResultsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/search/SearchResultsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract getFunnel()Lorg/wikipedia/analytics/SearchFunnel;
.end method

.method public abstract navigateToTitle(Lorg/wikipedia/page/PageTitle;ZI)V
.end method

.method public abstract onSearchProgressBar(Z)V
.end method

.method public abstract onSearchResultAddToList(Lorg/wikipedia/page/PageTitle;Lorg/wikipedia/Constants$InvokeSource;)V
.end method

.method public abstract onSearchResultCopyLink(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract onSearchResultShareLink(Lorg/wikipedia/page/PageTitle;)V
.end method

.method public abstract setSearchText(Ljava/lang/CharSequence;)V
.end method
