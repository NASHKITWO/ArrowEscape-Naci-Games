// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Arrow Escapade';

  @override
  String get appTagline => 'Slide. Solve. Escape.';

  @override
  String levelHeader(int level) {
    return 'LEVEL $level';
  }

  @override
  String get menuPlay => 'PLAY';

  @override
  String get menuLevels => 'LEVELS';

  @override
  String get menuGameModes => 'GAME MODES';

  @override
  String get menuRandom => 'RANDOM';

  @override
  String get menuHowToPlay => 'HOW TO PLAY';

  @override
  String get menuSettings => 'SETTINGS';

  @override
  String get randomPuzzleTitle => 'Random Puzzle';

  @override
  String get randomPuzzleSubtitle => 'Pick a difficulty tier';

  @override
  String get difficultyEasy => 'Easy';

  @override
  String get difficultyMedium => 'Medium';

  @override
  String get difficultyHard => 'Hard';

  @override
  String get difficultyMaster => 'Master';

  @override
  String get difficultyExpert => 'Expert';

  @override
  String get dialogCancel => 'Cancel';

  @override
  String get modesTitle => 'MODES';

  @override
  String get modeLevelsTitle => 'LEVELS';

  @override
  String get modeLevelsDesc =>
      'Select and replay any previously unlocked level.';

  @override
  String get modeRandomTitle => 'RANDOM';

  @override
  String get modeRandomDesc =>
      'Generate custom puzzles across 5 difficulty tiers.';

  @override
  String get modeZenTitle => 'ZEN';

  @override
  String get modeZenDesc =>
      'No lives, no timers. Just pure relaxing puzzle solving.';

  @override
  String get modeTimeAttackTitle => 'TIME ATTACK';

  @override
  String get modeTimeAttackDesc =>
      'Race against the clock! Escape arrows to gain extra time.';

  @override
  String get modeMultiplayerTitle => 'MULTIPLAYER';

  @override
  String get modeMultiplayerDesc =>
      'Compete with friends on the exact same puzzle layout.';

  @override
  String get levelsTitle => 'Levels';

  @override
  String get multiplayerTitle => 'MULTIPLAYER';

  @override
  String get hostRoomTitle => 'HOST ROOM';

  @override
  String get hostRoomDesc =>
      'Share this room code with a friend to compete on the exact same puzzle layout!';

  @override
  String get tooltipNewCode => 'New Code';

  @override
  String get tooltipCopyCode => 'Copy Code';

  @override
  String roomCodeCopied(String code) {
    return 'Room code $code copied to clipboard!';
  }

  @override
  String get startMatch => 'START MATCH';

  @override
  String get joinRoomTitle => 'JOIN ROOM';

  @override
  String get joinRoomDesc => 'Enter or paste a room code to join the match.';

  @override
  String get joinRoomHint => 'e.g. ROOM-849201';

  @override
  String get joinRoomErrorEmpty => 'Please enter a room code';

  @override
  String get joinMatch => 'JOIN MATCH';

  @override
  String get settingsTitle => 'SETTINGS';

  @override
  String get themeSectionTitle => 'THEME & CUSTOM SKIN';

  @override
  String get preferencesSectionTitle => 'PREFERENCES';

  @override
  String get prefHapticsTitle => 'HAPTIC FEEDBACK';

  @override
  String get prefHapticsDesc => 'Vibrate on arrow taps, moves, and collisions';

  @override
  String get prefInfiniteLivesTitle => 'INFINITE LIVES';

  @override
  String get prefInfiniteLivesDesc =>
      'Play without losing hearts on blocked moves';

  @override
  String get prefTapAssistTitle => 'TAP ASSIST';

  @override
  String get prefTapAssistDesc =>
      'Count taps on empty tiles near arrows as clicks';

  @override
  String get unlockThemeTitle => 'Unlock Theme & Skins';

  @override
  String get unlockThemeDesc =>
      'Unlock all custom themes and premium styling options.';

  @override
  String get getUnlockCode => 'Get Unlock Code';

  @override
  String get enterUnlockCodeHint => 'Enter unlock code';

  @override
  String get unlockSuccess => 'All themes and skins unlocked!';

  @override
  String get unlockErrorInvalid => 'Invalid unlock code';

  @override
  String get unlockNow => 'Unlock Now';

  @override
  String get howToPlayTitle => 'HOW TO PLAY';

  @override
  String get sectionTheBasics => 'THE BASICS';

  @override
  String get guideCoreObjectiveTitle => 'Core Objective';

  @override
  String get guideCoreObjectiveDesc =>
      'Your goal is to clear the entire puzzle grid by guiding every arrow off the board. When no arrows remain on the board, the level is complete.';

  @override
  String get guideMovementTitle => 'Arrow Movement';

  @override
  String get guideMovementDesc =>
      'Tap any arrow to launch it. Arrows slide forward in the exact direction their arrowhead points: Up, Down, Left, or Right. Even if an arrow has a bent or winding body, it always exits following its tip.';

  @override
  String get guideObstaclesTitle => 'Obstacles & Collisions';

  @override
  String get guideObstaclesDesc =>
      'An arrow can only escape if its entire exit path is completely clear. If another arrow stands in the way, the tapped arrow will shake and stay in place.';

  @override
  String get guideLivesTitle => 'Lives & Health';

  @override
  String get guideLivesDesc =>
      'In Classic mode, you start with 3 hearts. Tapping a blocked arrow costs 1 heart. If you deplete all 3 hearts, you must restart the level. You can toggle Infinite Lives in Settings anytime.';

  @override
  String get sectionBoardElements => 'BOARD ELEMENTS';

  @override
  String get guideTurnDotsTitle => 'Turn Dots (Redirectors)';

  @override
  String get guideTurnDotsDesc =>
      'Look for circular dots on empty grid cells marked with small arrows. When a sliding arrow crosses a Turn Dot, it instantly pivots in the dot\'s direction and consumes it, opening unexpected exit routes.';

  @override
  String get guideCombosTitle => 'Combos & Streaks';

  @override
  String get guideCombosDesc =>
      'Release arrows in quick succession (within 1.5 seconds) to trigger combos. Chaining consecutive escapes builds momentum and scores combo multipliers.';

  @override
  String get sectionGameModes => 'GAME MODES';

  @override
  String get guideClassicModeTitle => 'Classic Mode';

  @override
  String get guideClassicModeDesc =>
      'The standard campaign progression. Advance through handcrafted and procedural stages of escalating size, shape masks, and path complexity with 3 hearts.';

  @override
  String get guideZenModeTitle => 'Zen Mode';

  @override
  String get guideZenModeDesc =>
      'Pure relaxation with zero stress. No hearts to lose, no time limits, and no failure states. Ideal for unwinding and practicing complex boards.';

  @override
  String get guideTimeAttackTitle => 'Time Attack';

  @override
  String get guideTimeAttackDesc =>
      'Fast-paced race against the clock! Every arrow you successfully escape awards precious bonus seconds back onto your countdown timer.';

  @override
  String get guideMultiplayerTitle => 'Multiplayer Rooms';

  @override
  String get guideMultiplayerDesc =>
      'Host or join with room seed codes. Both players compete on the exact same randomized layout to see who can solve and escape the board fastest.';

  @override
  String get guideRandomPuzzlesTitle => 'Random Puzzles';

  @override
  String get guideRandomPuzzlesDesc =>
      'Generate infinite on-demand puzzles across Easy, Medium, Hard, Master, and Expert difficulties without affecting your campaign level progress.';

  @override
  String get sectionProStrategies => 'PRO STRATEGIES';

  @override
  String get guideUnpeelTitle => 'Unpeel From the Perimeter';

  @override
  String get guideUnpeelDesc =>
      'Start by scanning the outer borders. Arrows pointing straight outward into empty space can always escape immediately, freeing up critical lanes.';

  @override
  String get guideTraceBlockersTitle => 'Trace Blockers in Reverse';

  @override
  String get guideTraceBlockersDesc =>
      'When an arrow is blocked, find which arrow blocks it, then find what blocks that second arrow. Unlocking the final blocker in the chain frees everything behind it.';

  @override
  String get guideEnableTapAssistTitle => 'Enable Tap Assist';

  @override
  String get guideEnableTapAssistDesc =>
      'If you play on smaller screens or tend to tap between tight arrow segments, turn on Tap Assist in Settings to automatically map nearby taps to the nearest arrow.';

  @override
  String get leaveLevelTitle => 'Leave Level?';

  @override
  String get leaveLevelDesc => 'Your current level progress will be lost.';

  @override
  String get dialogResume => 'Resume';

  @override
  String get dialogLeave => 'Leave';

  @override
  String comboBanner(int combo) {
    return '$combo x COMBO';
  }

  @override
  String get bonusTimeBanner => '+15s';

  @override
  String scoreTitle(int score) {
    return 'Score: $score';
  }

  @override
  String get randomModeTitle => 'Random Mode';

  @override
  String levelNumberTitle(int level) {
    return 'Level $level';
  }

  @override
  String get levelCompleteTitle => 'Level Complete!';

  @override
  String get gameFinishedTitle => 'You Finished the Game!';

  @override
  String get gameFinishedDesc =>
      'Congratulations! You\'ve solved all 500 challenges. Stay tuned for more levels coming soon!';

  @override
  String get nextLevel => 'Next Level';

  @override
  String get home => 'Home';

  @override
  String get buyMeACoffee => 'Buy me a coffee';

  @override
  String get timesUp => 'Time\'s Up!';

  @override
  String get outOfTime => 'Out of Time!';

  @override
  String get outOfLives => 'Out of Lives!';

  @override
  String timeAttackStats(int score, int level) {
    return 'Puzzles Cleared: $score\nFinal Level: $level';
  }

  @override
  String get startNewRun => 'Start New Run';

  @override
  String get restartLevel => 'Restart Level';

  @override
  String get loadingLevel => 'LOADING LEVEL...';

  @override
  String get aboutTitle => 'ABOUT';

  @override
  String get madeByNaciGames => 'Made by Naci Games';

  @override
  String get founderInfo => 'Founder: Muhammad Ikhsan\nInformatics Engineering, Universitas Pamulang\nican3192@gmail.com';

  @override
  String get basedOnCredit => 'Based on Arrow Escape by sidhant947 (GPL-3.0).';
}
