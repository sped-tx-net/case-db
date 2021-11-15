// -----------------------------------------------------------------------
// <copyright file="Program.cs" company="sped-tx.net">
//     Copyright © 2021 sped-tx.net. All rights reserved.
// </copyright>
// -----------------------------------------------------------------------

using System;

namespace ConsoleTester
{
    public class ProgressReport
    {

        public ProgressReport(int activityId, string activity, string statusDescription)
        {
            ActivityId = activityId;
            Activity = activity;
            StatusDescription = statusDescription;
        }
        public string Activity { get; set; }
        public int ActivityId { get; }
        public string CurrentOperation { get; set; }
        public int ParentActivityId { get; set; }
        public int PercentComplete { get; set; }
        public ProgressReportType RecordType { get; set; }
        public int SecondsRemaining { get; set; }
        public string StatusDescription { get; set; }


        internal static int? GetSecondsRemaining(DateTime startTime, double percentageComplete)
        {
            if ((percentageComplete < 0.00001) || double.IsNaN(percentageComplete))
            {
                return null;
            }
            DateTime now = DateTime.UtcNow;
            TimeSpan elapsedTime = now - startTime;
            TimeSpan totalTime;
            try
            {
                totalTime = TimeSpan.FromMilliseconds(elapsedTime.TotalMilliseconds / percentageComplete);
            }
            catch (OverflowException)
            {
                return null;
            }
            catch (ArgumentException)
            {
                return null;
            }
            TimeSpan remainingTime = totalTime - elapsedTime;
            return (int)(remainingTime.TotalSeconds);
        }

        internal static int GetPercentageComplete(DateTime startTime, TimeSpan expectedDuration)
        {
            DateTime now = DateTime.UtcNow;
            if (startTime > now)
            {
                throw new ArgumentOutOfRangeException(nameof(startTime));
            }

            if (expectedDuration <= TimeSpan.Zero)
            {
                throw new ArgumentOutOfRangeException(nameof(expectedDuration));
            }
            TimeSpan timeElapsed = now - startTime;
            double b = expectedDuration.TotalSeconds / 9.0;
            double a = 100.0 * b;
            double percentageRemaining = a / (timeElapsed.TotalSeconds + b);
            double percentageCompleted = 100.0 - percentageRemaining;

            return (int)Math.Floor(percentageCompleted);
        }
    }
}
