.class public interface abstract Lde/mrapp/android/tabswitcher/model/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/mrapp/android/tabswitcher/model/Model$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lde/mrapp/android/tabswitcher/Tab;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAddTabButtonColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCount()I
.end method

.method public abstract getTab(I)Lde/mrapp/android/tabswitcher/Tab;
.end method

.method public abstract getTabBackgroundColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getTabCloseButtonIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTabCloseButtonIconTintList()Landroid/content/res/ColorStateList;
.end method

.method public abstract getTabCloseButtonIconTintMode()Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getTabContentBackgroundColor()I
.end method

.method public abstract getTabIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getTabIconTintMode()Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getTabPreviewFadeDuration()J
.end method

.method public abstract getTabPreviewFadeThreshold()J
.end method

.method public abstract getTabProgressBarColor()I
.end method

.method public abstract getTabTitleTextColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract getToolbarNavigationIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getToolbarNavigationIconTintMode()Landroid/graphics/PorterDuff$Mode;
.end method

.method public abstract getToolbarTitle()Ljava/lang/CharSequence;
.end method

.method public abstract isAddTabButtonShown()Z
.end method
